class Solution {
  void rotate(List<List<int>> matrix) {
    int len = matrix.length;
    final List result = List.generate(len, (index)=> List.from(matrix[index]));
    for(int i=0; i < len; i++){
     for(int j=0; j < len; j++){
       matrix[j][len-i-1] = result[i][j];
     } 
  }
  }
}