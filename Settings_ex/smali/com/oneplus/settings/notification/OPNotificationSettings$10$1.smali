.class Lcom/oneplus/settings/notification/OPNotificationSettings$10$1;
.super Ljava/lang/Object;
.source "OPNotificationSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings$10;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/notification/OPNotificationSettings$10;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings$10;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$10$1;->this$1:Lcom/oneplus/settings/notification/OPNotificationSettings$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 439
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$10$1;->this$1:Lcom/oneplus/settings/notification/OPNotificationSettings$10;

    iget-object v0, v0, Lcom/oneplus/settings/notification/OPNotificationSettings$10;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    # getter for: Lcom/oneplus/settings/notification/OPNotificationSettings;->mHandler:Lcom/oneplus/settings/notification/OPNotificationSettings$H;
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationSettings;->access$800(Lcom/oneplus/settings/notification/OPNotificationSettings;)Lcom/oneplus/settings/notification/OPNotificationSettings$H;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/notification/OPNotificationSettings$H;->sendEmptyMessage(I)Z

    .line 440
    return-void
.end method
