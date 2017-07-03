.class Lcom/oneplus/gallery2/drawable/MediaDrawable$2;
.super Ljava/lang/Object;
.source "MediaDrawable.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$SizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/drawable/MediaDrawable;->updateMediaSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/drawable/MediaDrawable;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;->this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 2
    .param p1, "media"    # Lcom/oneplus/gallery2/media/Media;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;->this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    # getter for: Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_Media:Lcom/oneplus/gallery2/media/Media;
    invoke-static {v0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->access$100(Lcom/oneplus/gallery2/drawable/MediaDrawable;)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 445
    :goto_0
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;->this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p2, p3}, Landroid/util/Size;-><init>(II)V

    # setter for: Lcom/oneplus/gallery2/drawable/MediaDrawable;->m_MediaSize:Landroid/util/Size;
    invoke-static {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->access$202(Lcom/oneplus/gallery2/drawable/MediaDrawable;Landroid/util/Size;)Landroid/util/Size;

    goto :goto_0
.end method
