.class Lcom/oneplus/gallery2/FilmstripFragment$12;
.super Ljava/lang/Object;
.source "FilmstripFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$SizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/FilmstripFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/FilmstripFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/FilmstripFragment;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/oneplus/gallery2/FilmstripFragment$12;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 1
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/oneplus/gallery2/FilmstripFragment$12;->this$0:Lcom/oneplus/gallery2/FilmstripFragment;

    # invokes: Lcom/oneplus/gallery2/FilmstripFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/gallery2/FilmstripFragment;->access$2100(Lcom/oneplus/gallery2/FilmstripFragment;Lcom/oneplus/gallery2/media/Media;II)V

    .line 375
    return-void
.end method
