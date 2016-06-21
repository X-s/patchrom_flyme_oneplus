.class Lcom/android/systemui_ex/power/PowerNotificationWarnings$1;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/power/PowerNotificationWarnings;->showStartSaverConfirmation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/power/PowerNotificationWarnings;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$1;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/systemui_ex/power/PowerNotificationWarnings$1;->this$0:Lcom/android/systemui_ex/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui_ex/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;
    invoke-static {v0, v1}, Lcom/android/systemui_ex/power/PowerNotificationWarnings;->access$102(Lcom/android/systemui_ex/power/PowerNotificationWarnings;Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;)Lcom/android/systemui_ex/statusbar/phone/SystemUIDialog;

    .line 371
    return-void
.end method
