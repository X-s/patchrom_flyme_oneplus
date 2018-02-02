.class Lcom/oneplus/camera/ui/TutorialUI$15;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI;->doZoomAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TutorialUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TutorialUI;

    .prologue
    .line 353
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$15;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 358
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$15;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get5(Lcom/oneplus/camera/ui/TutorialUI;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    return-void
.end method
