
int[] listToSort = new int[10];

void setup() {

  listToSort = shuffel(listToSort);
  
  
  printArray(mySort(listToSort));
}


void draw() {
}



int[] shuffel(int[] list) {
  for (int i =0; i<list.length; i++) {
    list[i] = (int)random(0, 600);
  }
  return list;
}


int[] mySort(int[] list) {
  boolean done = false;

  while (!done) {
    done=true; // hvis vi ikke bytter om er vi færdige!!

    for (int i=0; i<list.length-1; i++) {
      if (list[i]>list[i+1]) {
        int atemp= list[i];
        list[i]=list[i+1];
        list[i+1]=atemp;
        done=false; // vi har byttet om og skal derfor løbe gennem vores array igen. 
      } 
    }
  }
  return list;
}
