.class Lcom/oneplus/gallery2/editor/DrawingEditorMode$1;
.super Ljava/lang/Object;
.source "DrawingEditorMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/DrawingEditorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/DrawingEditorMode;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 86
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    invoke-virtual {v1}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery2/PhotoEditorFragment;

    move-result-object v0

    .line 87
    .local v0, "fragment":Lcom/oneplus/gallery2/PhotoEditorFragment;
    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlUI()V

    .line 92
    iget-object v1, p0, Lcom/oneplus/gallery2/editor/DrawingEditorMode$1;->this$0:Lcom/oneplus/gallery2/editor/DrawingEditorMode;

    invoke-virtual {v1, v2, v2}, Lcom/oneplus/gallery2/editor/DrawingEditorMode;->setUIVisibility(ZZ)V

    goto :goto_0
.end method
