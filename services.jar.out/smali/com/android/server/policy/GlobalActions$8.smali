.class Lcom/android/server/policy/GlobalActions$8;
.super Lcom/android/server/policy/GlobalActions$SinglePressAction;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->getScreenshotAction()Lcom/android/server/policy/GlobalActions$Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;II)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # I

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/GlobalActions$SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .locals 1

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->takeScreenshot()V
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$1600(Lcom/android/server/policy/GlobalActions;)V

    .line 589
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 596
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x1

    return v0
.end method
