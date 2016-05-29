.class Lcom/oneplus/settings/notification/OPNotificationSettings$10;
.super Ljava/lang/Object;
.source "OPNotificationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/notification/OPNotificationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationSettings;)V
    .locals 0

    .prologue
    .line 428
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationSettings$10;->this$0:Lcom/oneplus/settings/notification/OPNotificationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 434
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/notification/OPNotificationSettings$10$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/notification/OPNotificationSettings$10$1;-><init>(Lcom/oneplus/settings/notification/OPNotificationSettings$10;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 444
    const/4 v0, 0x1

    return v0
.end method
