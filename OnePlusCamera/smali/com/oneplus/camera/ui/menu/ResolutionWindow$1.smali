.class Lcom/oneplus/camera/ui/menu/ResolutionWindow$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ResolutionWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/menu/ResolutionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/menu/ResolutionWindow;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/menu/ResolutionWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/camera/ui/menu/ResolutionWindow$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionWindow$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    invoke-virtual {v0}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;->dismiss()V

    .line 49
    iget-object v0, p0, Lcom/oneplus/camera/ui/menu/ResolutionWindow$1;->this$0:Lcom/oneplus/camera/ui/menu/ResolutionWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/camera/ui/menu/ResolutionWindow;->setFocusable(Z)V

    .line 46
    return-void
.end method
