.class Lcom/android/settings_ex/notification/NotificationSettings$18;
.super Ljava/lang/Object;
.source "NotificationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/NotificationSettings;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationSettings;)V
    .locals 0

    .prologue
    .line 1421
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationSettings$18;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationSettings$18;->this$0:Lcom/android/settings_ex/notification/NotificationSettings;

    # setter for: Lcom/android/settings_ex/notification/NotificationSettings;->mVibrateSelectID:I
    invoke-static {v0, p2}, Lcom/android/settings_ex/notification/NotificationSettings;->access$3102(Lcom/android/settings_ex/notification/NotificationSettings;I)I

    .line 1426
    return-void
.end method
