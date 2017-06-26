.class Lcom/android/settings_ex/notification/NotificationStation$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/NotificationStation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings_ex/notification/NotificationStation$1;->this$0:Lcom/android/settings_ex/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings_ex/notification/NotificationStation$1;->this$0:Lcom/android/settings_ex/notification/NotificationStation;

    # invokes: Lcom/android/settings_ex/notification/NotificationStation;->refreshList()V
    invoke-static {v0}, Lcom/android/settings_ex/notification/NotificationStation;->access$000(Lcom/android/settings_ex/notification/NotificationStation;)V

    .line 82
    return-void
.end method
