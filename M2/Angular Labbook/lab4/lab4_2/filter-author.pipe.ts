import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'filterAuthor'
})
export class FilterAuthorPipe implements PipeTransform {

  transform(booklist:any[],arg:string){
    arg = arg ? arg.toLocaleLowerCase() : null;
        return arg ? booklist.filter((item) =>
            item.author.toLocaleLowerCase().indexOf(arg) !== -1) : booklist;
    }
}
