.class Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;
.super Lcom/oneplus/base/Handle;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlPanelHandle"
.end annotation


# instance fields
.field public final listener:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

.field public final progress:I

.field final synthetic this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

.field public final title:Ljava/lang/String;

.field public final type:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;)V
    .locals 1
    .param p2, "progress"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;
    .param p5, "listener"    # Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    .line 325
    const-string v0, "Progress Controls Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 326
    iput p2, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->progress:I

    .line 327
    iput-object p3, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->title:Ljava/lang/String;

    .line 328
    iput-object p4, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->type:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    .line 329
    iput-object p5, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->listener:Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelListener;

    .line 330
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 336
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$400(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$400(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->setProgressControlsVisibility(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$500(Lcom/oneplus/gallery/PhotoEditorFragment;ZZ)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    iget-object v0, p0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$400(Lcom/oneplus/gallery/PhotoEditorFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;

    # invokes: Lcom/oneplus/gallery/PhotoEditorFragment;->showControlPanel(Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery/PhotoEditorFragment;->access$600(Lcom/oneplus/gallery/PhotoEditorFragment;Lcom/oneplus/gallery/PhotoEditorFragment$ControlPanelHandle;)V

    goto :goto_0
.end method
