.class Lcom/android/settings_ex/localepicker/OPLocalePicker$1;
.super Ljava/lang/Object;
.source "OPLocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/localepicker/OPLocalePicker;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/localepicker/OPLocalePicker;

.field final synthetic val$dialogId:I


# direct methods
.method constructor <init>(Lcom/android/settings_ex/localepicker/OPLocalePicker;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/localepicker/OPLocalePicker;
    .param p2, "val$dialogId"    # I

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings_ex/localepicker/OPLocalePicker$1;->this$0:Lcom/android/settings_ex/localepicker/OPLocalePicker;

    iput p2, p0, Lcom/android/settings_ex/localepicker/OPLocalePicker$1;->val$dialogId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/OPLocalePicker$1;->this$0:Lcom/android/settings_ex/localepicker/OPLocalePicker;

    iget v1, p0, Lcom/android/settings_ex/localepicker/OPLocalePicker$1;->val$dialogId:I

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/localepicker/OPLocalePicker;->removeDialog(I)V

    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/OPLocalePicker$1;->this$0:Lcom/android/settings_ex/localepicker/OPLocalePicker;

    invoke-virtual {v0}, Lcom/android/settings_ex/localepicker/OPLocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 105
    iget-object v0, p0, Lcom/android/settings_ex/localepicker/OPLocalePicker$1;->this$0:Lcom/android/settings_ex/localepicker/OPLocalePicker;

    invoke-static {v0}, Lcom/android/settings_ex/localepicker/OPLocalePicker;->-get0(Lcom/android/settings_ex/localepicker/OPLocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/localepicker/OPLocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 102
    return-void
.end method
