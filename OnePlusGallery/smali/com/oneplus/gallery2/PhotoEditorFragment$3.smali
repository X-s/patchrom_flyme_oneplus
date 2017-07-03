.class Lcom/oneplus/gallery2/PhotoEditorFragment$3;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"

# interfaces
.implements Lcom/oneplus/gallery2/media/Media$SizeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$3;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

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
    .line 237
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$3;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, p2, p3}, Landroid/util/Size;-><init>(II)V

    # invokes: Lcom/oneplus/gallery2/PhotoEditorFragment;->onMediaSizeObtained(Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V
    invoke-static {v0, p1, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$000(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/media/Media;Landroid/util/Size;)V

    .line 238
    return-void
.end method
