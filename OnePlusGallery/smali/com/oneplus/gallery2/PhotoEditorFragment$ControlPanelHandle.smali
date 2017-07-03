.class Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;
.super Lcom/oneplus/base/Handle;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControlPanelHandle"
.end annotation


# instance fields
.field public final listener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

.field public final progress:I

.field final synthetic this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

.field public final title:Ljava/lang/String;

.field public final type:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;


# direct methods
.method protected constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment;ILjava/lang/String;Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;)V
    .locals 1
    .param p2, "progress"    # I
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "type"    # Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;
    .param p5, "listener"    # Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    .prologue
    .line 342
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    .line 343
    const-string v0, "Progress Controls Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 344
    iput p2, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->progress:I

    .line 345
    iput-object p3, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->title:Ljava/lang/String;

    .line 346
    iput-object p4, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->type:Lcom/oneplus/gallery/drawable/ProgressDrawable$ProgressType;

    .line 347
    iput-object p5, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->listener:Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelListener;

    .line 348
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 354
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$500(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$500(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    const/4 v1, 0x1

    # invokes: Lcom/oneplus/gallery2/PhotoEditorFragment;->setProgressControlsVisibility(ZZ)V
    invoke-static {v0, v2, v1}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$600(Lcom/oneplus/gallery2/PhotoEditorFragment;ZZ)V

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    iget-object v0, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    # getter for: Lcom/oneplus/gallery2/PhotoEditorFragment;->m_ControlPanelHandles:Ljava/util/List;
    invoke-static {v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$500(Lcom/oneplus/gallery2/PhotoEditorFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;

    # invokes: Lcom/oneplus/gallery2/PhotoEditorFragment;->showControlPanel(Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;)V
    invoke-static {v1, v0}, Lcom/oneplus/gallery2/PhotoEditorFragment;->access$700(Lcom/oneplus/gallery2/PhotoEditorFragment;Lcom/oneplus/gallery2/PhotoEditorFragment$ControlPanelHandle;)V

    goto :goto_0
.end method
