import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filterName'
})
export class FilterNamePipe implements PipeTransform {

  transform(booklist:any[],arg:string){
    arg = arg ? arg.toLocaleLowerCase() : null;
        return arg ? booklist.filter((item) =>
            item.title.toLocaleLowerCase().indexOf(arg) !== -1) : booklist;
    }
}


