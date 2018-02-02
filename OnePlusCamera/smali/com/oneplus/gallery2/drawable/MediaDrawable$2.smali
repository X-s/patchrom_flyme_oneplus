.class Lcom/oneplus/gallery2/drawable/MediaDrawable$2;
.super Ljava/lang/Object;
.source "MediaDrawable.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$SizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery2/drawable/MediaDrawable;->updateMediaSize(Landroid/util/Size;)V
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
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;->this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSizeObtained(Lcom/oneplus/gallery2/media/Media;II)V
    .locals 2

    .prologue
    .line 463
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;->this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    invoke-static {v0}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->access$1(Lcom/oneplus/gallery2/drawable/MediaDrawable;)Lcom/oneplus/gallery2/media/Media;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/oneplus/gallery2/drawable/MediaDrawable$2;->this$0:Lcom/oneplus/gallery2/drawable/MediaDrawable;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p2, p3}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, v1}, Lcom/oneplus/gallery2/drawable/MediaDrawable;->access$2(Lcom/oneplus/gallery2/drawable/MediaDrawable;Landroid/util/Size;)V

    .line 468
    return-void

    .line 464
    :cond_0
    return-void
.end method
