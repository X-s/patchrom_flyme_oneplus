.class Lcom/oneplus/camera/ui/TutorialUI$14$1$1;
.super Ljava/lang/Object;
.source "TutorialUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TutorialUI$14$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/oneplus/camera/ui/TutorialUI$14$1;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TutorialUI$14$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/oneplus/camera/ui/TutorialUI$14$1;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/oneplus/camera/ui/TutorialUI$14$1$1;->this$2:Lcom/oneplus/camera/ui/TutorialUI$14$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 339
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$14$1$1;->this$2:Lcom/oneplus/camera/ui/TutorialUI$14$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14$1;->this$1:Lcom/oneplus/camera/ui/TutorialUI$14;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get4(Lcom/oneplus/camera/ui/TutorialUI;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/TutorialUI;->-set0(Lcom/oneplus/camera/ui/TutorialUI;I)I

    .line 340
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$14$1$1;->this$2:Lcom/oneplus/camera/ui/TutorialUI$14$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14$1;->this$1:Lcom/oneplus/camera/ui/TutorialUI$14;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-get4(Lcom/oneplus/camera/ui/TutorialUI;)I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$14$1$1;->this$2:Lcom/oneplus/camera/ui/TutorialUI$14$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14$1;->this$1:Lcom/oneplus/camera/ui/TutorialUI$14;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    const-wide/16 v2, 0x12c

    const v1, 0xc352

    const/4 v4, 0x1

    invoke-static {v0, v1, v4, v2, v3}, Lcom/oneplus/base/HandlerUtils;->sendMessage(Lcom/oneplus/base/HandlerObject;IZJ)Z

    .line 337
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/oneplus/camera/ui/TutorialUI$14$1$1;->this$2:Lcom/oneplus/camera/ui/TutorialUI$14$1;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14$1;->this$1:Lcom/oneplus/camera/ui/TutorialUI$14;

    iget-object v0, v0, Lcom/oneplus/camera/ui/TutorialUI$14;->this$0:Lcom/oneplus/camera/ui/TutorialUI;

    invoke-static {v0}, Lcom/oneplus/camera/ui/TutorialUI;->-wrap7(Lcom/oneplus/camera/ui/TutorialUI;)V

    goto :goto_0
.end method
