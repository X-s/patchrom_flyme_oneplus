.class Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity$1;
.super Ljava/lang/Object;
.source "OnePlusReportMyHeadSetActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 37
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 39
    .local v0, "im":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity$1;->this$0:Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;

    iget-object v1, v1, Lcom/oneplus/tuner/OnePlusReportMyHeadSetActivity;->mBrandInput:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 40
    return-void
.end method
