import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filterYear'
})
export class FilterYearPipe implements PipeTransform {

  transform(booklist:any[],arg:number){
    return (arg>=0)?booklist.filter(item=>
      item.year==arg):booklist;
}

}
