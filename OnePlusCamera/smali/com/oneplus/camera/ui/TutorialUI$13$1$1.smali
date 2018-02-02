.class Lcom/oneplus/camera/ui/TutorialUI$13$1$1;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI$13$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/camera/ui/TutorialUI$13$1;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI$13$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/oneplus/camera/ui/TutorialUI$13$1;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$13$1$1;->this$2:Lcom/oneplus/camera/ui/TutorialUI$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 299
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$13$1$1;->this$2:Lcom/oneplus/camera/ui/TutorialUI$13$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$13$1;->this$1:Lcom/oneplus/camera/ui/TutorialUI$13;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$13;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/TutorialUI;->-wrap0(Lcom/oneplus/camera/ui/TutorialUI;Z)V

    .line 297
    return-void
.end method
