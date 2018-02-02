.class Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$3;
.super Ljava/lang/Object;
.source "CameraSwtichAnimationIcon.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$3;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 7
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 99
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v1, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$3;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$3;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-get0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;)Landroid/widget/ImageView;

    move-result-object v2

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-wrap1(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Landroid/view/View;ZJLandroid/view/animation/Interpolator;)V

    .line 102
    iget-object v0, p0, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon$3;->this$0:Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;

    invoke-static {v0, v3}, Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;->-set0(Lcom/oneplus/camera/ui/CameraSwtichAnimationIcon;Z)Z

    .line 97
    :cond_0
    return-void
.end method
