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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/OnScreenHintImpl;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRotated(Landroid/view/View;Lcom/oneplus/base/Rotation;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rotation"    # Lcom/oneplus/base/Rotation;

    .prologue
    const/4 v3, 0x0

    .line 58
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    sget-object v1, Lcom/oneplus/camera/ui/OnScreenHintImpl;->PROP_IS_VISIBLE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get0(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap5(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V

    .line 63
    :goto_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap7(Lcom/oneplus/camera/ui/OnScreenHintImpl;Z)V

    .line 56
    return-void

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    iget-object v1, p0, Lcom/oneplus/camera/ui/OnScreenHintImpl$1;->this$0:Lcom/oneplus/camera/ui/OnScreenHintImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-get0(Lcom/oneplus/camera/ui/OnScreenHintImpl;)Lcom/oneplus/camera/widget/RotateRelativeLayout;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/oneplus/camera/ui/OnScreenHintImpl;->-wrap5(Lcom/oneplus/camera/ui/OnScreenHintImpl;Landroid/view/View;Z)V

    goto :goto_0
.end method
