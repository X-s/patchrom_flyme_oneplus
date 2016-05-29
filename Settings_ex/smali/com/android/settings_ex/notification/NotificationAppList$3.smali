.class Lcom/android/settings_ex/notification/NotificationAppList$3;
.super Ljava/lang/Object;
.source "NotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationAppList;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationAppList;)V
    .locals 0

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationAppList$3;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationAppList$3;->this$0:Lcom/android/settings_ex/notification/NotificationAppList;

    # invokes: Lcom/android/settings_ex/notification/NotificationAppList;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationAppList;->access$1600(Lcom/android/settings_ex/notification/NotificationAppList;)V

    .line 738
    return-void
.end method
