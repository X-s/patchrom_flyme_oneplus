.class Lcom/oneplus/camera/ui/TutorialUI$22;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI;->showBokehTutorial()V
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
    .line 880
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$22;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$22;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get0(Lcom/oneplus/camera/ui/TutorialUI;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showBokehTutorial() - click ok."

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$22;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/TutorialUI;->-wrap0(Lcom/oneplus/camera/ui/TutorialUI;Z)V

    .line 883
    return-void
.end method
