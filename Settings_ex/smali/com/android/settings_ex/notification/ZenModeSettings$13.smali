.class Lcom/android/settings_ex/notification/ZenModeSettings$13;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/ZenModeSettings;->showConditionSelection(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

.field final synthetic val$zenModeConditionSelection:Lcom/android/settings_ex/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ZenModeSettings;Lcom/android/settings_ex/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 713
    iput-object p1, p0, Lcom/android/settings_ex/notification/ZenModeSettings$13;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    iput-object p2, p0, Lcom/android/settings_ex/notification/ZenModeSettings$13;->val$zenModeConditionSelection:Lcom/android/settings_ex/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 716
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$13;->val$zenModeConditionSelection:Lcom/android/settings_ex/notification/ZenModeConditionSelection;

    invoke-virtual {v0}, Lcom/android/settings_ex/notification/ZenModeConditionSelection;->confirmCondition()V

    .line 717
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeSettings$13;->this$0:Lcom/android/settings_ex/notification/ZenModeSettings;

    const/4 v1, 0x0

    # setter for: Lcom/android/settings_ex/notification/ZenModeSettings;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings_ex/notification/ZenModeSettings;->access$602(Lcom/android/settings_ex/notification/ZenModeSettings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 718
    return-void
.end method
