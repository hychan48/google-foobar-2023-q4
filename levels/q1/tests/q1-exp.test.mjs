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
 * solution level 1 - js version
 * @param strInput {string} Sequence of characters a-z. max length is 200 chars
 * @returns {number}
 * @example
 * returns 1 if no exact repeated pattern are found
 * @description
 * returns the maximum number of equal parts that can be cut from the cake without leaving any leftovers.
 *
 * Quick and dirty solution:
 * < 200 characters so shouldn't be an issue
 * O(sqrt(n)) time complexity
 * O(n*sqrt(n)) worst time complexity
 */
function solution(strInput) {
  /** @type {number} Length - max 200 */
  const inputLength = strInput.length;
  if (inputLength > 200) {
    throw new Error('String length must be less than 200');
  }

  /**
   * solution.canDivide
   * @param windowSlidingLength {number}
   * @returns {boolean}
    Helper function to check if the string can be divided into equal parts of a given length
   */
  function canDivide(windowSlidingLength) {
    /** @type {string} - Current reference pattern of sliding window */
    const pattern = strInput.substring(0, windowSlidingLength);
    /* Iterate over all windows of length L */
    for (let i = windowSlidingLength; i < inputLength; i += windowSlidingLength) {
      /* early exit if not found */
      if (strInput.substring(i, i + windowSlidingLength) !== pattern) {
        return false;
      }
    }
    return true;
  }

  /* Iterate over all divisors of inputLength L */
  for (let d = 1; d <= Math.floor(inputLength / 2); d++) {
    /* If L is divisible by d and */
    if (inputLength % d === 0 && canDivide(d)) {
      /* i.e. 12/6 = 2. inputLength / patternLength = partLength */
      // console.log(inputLength,d,inputLength / d);
      /* convert to answer's format, i.e. number of equal parts */
      return inputLength / d;
    }
  }

  /* Else : no pattern is found, you can only cut the cake into 1 part */
  return 1;
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
  //returns 1
  it('solution("a") returns 1', function(){
    assert.strictEqual(solution("a"),1);
  });
  it('solution("abcdefg") returns 1', function(){
    assert.strictEqual(solution("abcdefg"),1);
  });
  //add more later / make generator if needed




});
