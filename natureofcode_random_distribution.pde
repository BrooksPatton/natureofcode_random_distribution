int[] randomCounts;

void setup() {
  size(600, 200);
  randomCounts = new int[100];
}

void draw() {
  background(255);
  
  int index = int(random(randomCounts.length));
  randomCounts[index]++;
  
  stroke(0);
  fill(175);
  int w = width / randomCounts.length;
  
  for(int i = 0; i < randomCounts.length; i++) {
    rect(i * w, height - randomCounts[i], w - 1, randomCounts[i]);
  }
}