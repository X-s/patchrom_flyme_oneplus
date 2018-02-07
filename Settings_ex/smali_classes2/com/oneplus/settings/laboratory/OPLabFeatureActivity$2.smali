.class Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;
.super Ljava/lang/Object;
.source "OPLabFeatureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->initData(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;
    .param p2, "val$handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    iput-object p2, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;->this$0:Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity;->fetchLockedAppListByPackageInfo()V

    .line 81
    iget-object v0, p0, Lcom/oneplus/settings/laboratory/OPLabFeatureActivity$2;->val$handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    return-void
.end method
