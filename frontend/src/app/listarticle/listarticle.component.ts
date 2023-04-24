import { Component } from '@angular/core';
import { ArticleService } from '../services/article.service';

@Component({
  selector: 'app-listarticle',
  templateUrl: './listarticle.component.html',
  styleUrls: ['./listarticle.component.css']
})
export class ListarticleComponent {

  articles: any;

  constructor(private articleService: ArticleService) { }

  ngOnInit() {
    this.ArticleList()
  }

  ArticleList() {
    this.articles = this.articleService.listArticle().subscribe(
      article => {
        this.articles = article
        console.log(this.articles);
      }
    )
  }
}
