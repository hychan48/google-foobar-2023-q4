/**

*/
// import { createRequire } from 'module';
// const require = createRequire(import.meta.url);
// const assert = require('assert');
// const {describe,it} = require('mocha');
import assert from 'node:assert';
import { describe, it} from 'mocha';

import fs from 'node:fs';
function writeToFile(fileName,data,space=2){
  const sFileName = /\./.test(fileName) ? fileName : fileName + '.json';
  const filePath = `temp/${sFileName}`
  fs.writeFileSync(filePath,
    typeof data === 'string' ? data :JSON.stringify(data,null,+space)
  );
}

/**
 * Quick and dirty solution
 * < 200 characters so shouldnt be an issue
 * O(sqrt(n)) time complexity
 * O(n*sqrt(n)) worst time complexity
 */
function solution(s) {
    const L = s.length;

    // Helper function to check if the string can be divided into equal parts of a given length
    function canDivide(length) {
        const pattern = s.substring(0, length);
        for (let i = length; i < L; i += length) {
            if (s.substring(i, i + length) !== pattern) {
                return false;
            }
        }
        return true;
    }

    // Iterate over all divisors of L
    for (let d = 1; d <= Math.floor(L / 2); d++) {
        if (L % d === 0 && canDivide(d)) {
            return L / d;
        }
    }

    return 1; // If no pattern is found, you can only cut the cake into 1 part
}

/**
 * Solution from demo + adding tests by simple rotation
 */
describe('q1-exp.test.mjs - solution demo', function(){
  /*
   * Gen ai to create it blocks
   */
   //solution("abccbaabccba") returns 2
  it('solution("abccbaabccba") returns 2', function(){
    assert.strictEqual(solution("abccbaabccba"),2);
  });
  //solution("abcabcabcabc") returns 4
  it('solution("abcabcabcabc") returns 4', function(){
    assert.strictEqual(solution("abcabcabcabc"),4);
  });
  /* add circular rotations. i.e. bccbaabccbaa returns 2 */
  //solution("bccbaabccbaa") returns 2
  it('solution("bccbaabccbaa") returns 2', function(){
    assert.strictEqual(solution("bccbaabccbaa"),2);
  });
  //solution("ccbaabccbaab") returns 2
  it('solution("ccbaabccbaab") returns 2', function(){
    assert.strictEqual(solution("ccbaabccbaab"),2);
  });
  //solution("cbaabccbaabc") returns 2
  it('solution("cbaabccbaabc") returns 2', function(){
    assert.strictEqual(solution("cbaabccbaabc"),2);
  });
  //solution("baabccbaabcc") returns 2
  it('solution("baabccbaabcc") returns 2', function(){
    assert.strictEqual(solution("baabccbaabcc"),2);
  });
  //solution("aabccbaabccb") returns 2
  it('solution("aabccbaabccb") returns 2', function(){
    assert.strictEqual(solution("aabccbaabccb"),2);
  });
  //add more later / make generator if needed




});
