.class Lcom/oneplus/camera/ui/OnScreenHintImpl$1;
.super Ljava/lang/Object;
.source "OnScreenHintImpl.java"

# interfaces
.implements Lcom/oneplus/camera/UIComponent$ViewRotationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/OnScreenHintImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/OnScreenHintImpl;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    sget-object v1, Lcom/oneplus/camera/ui/OnScreenHint;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    # getter for: Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;
    invoke-static {v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->access$000(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    # invokes: Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->access$100(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V

    .line 49
    :goto_0
    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    # getter for: Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->access$300(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    # invokes: Lcom/oneplus/camera/ui/OnScreenHintImpl;->updateHintLayout(Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V
    invoke-static {v1, v0, p2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->access$400(Lcom/oneplus/camera/ui/OnScreenHintImpl;Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;Lcom/oneplus/base/Rotation;)V

    .line 50
    return-void

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    # getter for: Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_Container:Lcom/oneplus/camera/widget/RotateRelativeLayout;
    invoke-static {v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->access$000(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-result-object v1

    const/4 v2, 0x0

    # invokes: Lcom/oneplus/camera/ui/OnScreenHintImpl;->setViewVisibility(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->access$200(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    # getter for: Lcom/oneplus/camera/ui/OnScreenHintImpl;->m_HintHandles:Ljava/util/LinkedList;
    invoke-static {v0}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->access$300(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/camera/ui/OnScreenHintImpl$HintHandle;

    goto :goto_1
.end method
