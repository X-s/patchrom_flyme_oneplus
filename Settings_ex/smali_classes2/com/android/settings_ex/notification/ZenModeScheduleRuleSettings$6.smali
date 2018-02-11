.class Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$6;
.super Ljava/lang/Object;
.source "ZenModeScheduleRuleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->showDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings$6;->this$0:Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;

    invoke-static {v0}, Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;->-wrap1(Lcom/android/settings_ex/notification/ZenModeScheduleRuleSettings;)V

    .line 228
    return-void
.end method
