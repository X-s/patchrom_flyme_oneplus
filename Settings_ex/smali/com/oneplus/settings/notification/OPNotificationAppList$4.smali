.class Lcom/oneplus/settings/notification/OPNotificationAppList$4;
.super Ljava/lang/Object;
.source "OPNotificationAppList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/notification/OPNotificationAppList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/notification/OPNotificationAppList;)V
    .locals 0

    .prologue
    .line 844
    iput-object p1, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/oneplus/settings/notification/OPNotificationAppList$4;->this$0:Lcom/oneplus/settings/notification/OPNotificationAppList;

    # invokes: Lcom/oneplus/settings/notification/OPNotificationAppList;->refreshDisplayedItems()V
    invoke-static {v0}, Lcom/oneplus/settings/notification/OPNotificationAppList;->access$1700(Lcom/oneplus/settings/notification/OPNotificationAppList;)V

    .line 848
    return-void
.end method
