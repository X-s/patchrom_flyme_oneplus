.class Lcom/oneplus/gallery/editor/DrawingEditorMode$1;
.super Ljava/lang/Object;
.source "DrawingEditorMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/DrawingEditorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/DrawingEditorMode;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$1;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 86
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$1;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->getPhotoEditorFragment()Lcom/oneplus/gallery/PhotoEditorFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->showControlUI()V

    .line 87
    iget-object v0, p0, Lcom/oneplus/gallery/editor/DrawingEditorMode$1;->this$0:Lcom/oneplus/gallery/editor/DrawingEditorMode;

    invoke-virtual {v0, v1, v1}, Lcom/oneplus/gallery/editor/DrawingEditorMode;->setUIVisibility(ZZ)V

    .line 88
    return-void
.end method
