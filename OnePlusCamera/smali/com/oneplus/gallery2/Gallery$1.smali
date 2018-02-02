.class Lcom/oneplus/gallery2/Gallery$1;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/Gallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/Gallery;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/Gallery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery$1;->this$0:Lcom/oneplus/gallery2/Gallery;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery$1;->this$0:Lcom/oneplus/gallery2/Gallery;

    invoke-static {v0}, Lcom/oneplus/gallery2/Gallery;->access$0(Lcom/oneplus/gallery2/Gallery;)Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery$1;->this$0:Lcom/oneplus/gallery2/Gallery;

    invoke-static {v0}, Lcom/oneplus/gallery2/Gallery;->access$0(Lcom/oneplus/gallery2/Gallery;)Lcom/oneplus/gallery2/GalleryActivity;

    move-result-object v0

    sget-object v1, Lcom/oneplus/gallery2/GalleryActivity;->PROP_IS_RUNNING:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/gallery2/GalleryActivity;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/oneplus/gallery2/Gallery$1;->this$0:Lcom/oneplus/gallery2/Gallery;

    invoke-static {v0, p1}, Lcom/oneplus/gallery2/Gallery;->access$1(Lcom/oneplus/gallery2/Gallery;I)V

    goto :goto_0
.end method
