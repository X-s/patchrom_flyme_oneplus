.class Lcom/android/settings_ex/notification/ManagedServiceSettings$1;
.super Landroid/database/ContentObserver;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/ManagedServiceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/ManagedServiceSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/ManagedServiceSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings$1;->this$0:Lcom/android/settings_ex/notification/ManagedServiceSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings_ex/notification/ManagedServiceSettings$1;->this$0:Lcom/android/settings_ex/notification/ManagedServiceSettings;

    # invokes: Lcom/android/settings_ex/notification/ManagedServiceSettings;->updateList()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/ManagedServiceSettings;->access$000(Lcom/android/settings_ex/notification/ManagedServiceSettings;)V

    .line 75
    return-void
.end method
