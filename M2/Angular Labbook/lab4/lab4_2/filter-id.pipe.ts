import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filterId'
})
export class FilterIdPipe implements PipeTransform {

  transform(booklist:any[],arg:number){
    return (arg>=0)?booklist.filter(item=>
      item.id==arg):booklist;
}
// transform(booklist:any[],arg:number){
//   arg = arg ? arg : null;
//       return arg ? booklist.filter((item) =>
//           item.id== arg) : booklist;
//   }

}
