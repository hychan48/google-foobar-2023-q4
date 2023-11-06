/**
*/
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
 * Knight has 8 possible moves
 * +2 +1
 * +2 -1
 * -2 +1
 * -2 -1
 * +1 +2
 * +1 -2
 * -1 +2
 * -1 -2
 * Boundaries
 * 0 <= x <= 7
 * 0 <= y <= 7
 * 0,0 is top left
 * 7,7 is bottom right
 * Linear Programming - https://en.wikipedia.org/wiki/Linear_programming
 *
 */
/**
 * Namespace for Question2
 */
class Question2 {
  /**
   * Feels like linear Programming due to the border constraints. or can just go greedy
   * let's just try with the two examples
   *
   * Convert Vector of 0 to 63 into 8x8 matrix (chess board)
   * Jupyter notebook? repl.it?
   */

}
/**
 * Generate visual aids / docs
 */
describe('q2-exp.test.mjs', function(){
  /**
   * For visual aid
   * looks kinda bad
   * convert to MD table
   */
  it('dump 8x8 for visual', function(){
    // const expected = vectorToMatrix(vector0to63);
    // writeToFile('vectorToMatrix',expected);

    /** @typedef {Array} Matrix 0 to 63 in a AoA*/
    const data = Array.from(
      {length:8},(v,i)=> new Array(8)
        .fill(0).map((v,j)=>i*8+j)
    );
    const chessXY = data.map((row,i)=>row
      // .map((v,j)=>  [i,j]));// too cluttered
      // .map((v,j)=>  `(${i},${j})`)//per cell - still too cluttered looking
      .map((v,j)=>  `${i},${j}`)//per cell
      .join('|')// row separator

    );

    const sData = data.join('\n')
    writeToFile('vectorToMatrix',data);
    writeToFile('vectorToMatrix.txt',sData);

    writeToFile('chessXY.txt',chessXY.join('\n'));

    // assert.strictEqual()
  });
});

// describe('q2-exp.test.mjs - expected', function(){
//   it('actionHere', function(){
//     //assert.strictEqual(1,1);//require assert
//   });
// });