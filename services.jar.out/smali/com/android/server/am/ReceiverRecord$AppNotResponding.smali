.class final Lcom/android/server/am/ReceiverRecord$AppNotResponding;
.super Ljava/lang/Object;
.source "ReceiverRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ReceiverRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppNotResponding"
.end annotation


# instance fields
.field private final mAnnotation:Ljava/lang/String;

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field final synthetic this$0:Lcom/android/server/am/ReceiverRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ReceiverRecord;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ReceiverRecord;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "annotation"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/server/am/ReceiverRecord$AppNotResponding;->this$0:Lcom/android/server/am/ReceiverRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p2, p0, Lcom/android/server/am/ReceiverRecord$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 152
    iput-object p3, p0, Lcom/android/server/am/ReceiverRecord$AppNotResponding;->mAnnotation:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/server/am/ReceiverRecord$AppNotResponding;->this$0:Lcom/android/server/am/ReceiverRecord;

    iget-object v0, v0, Lcom/android/server/am/ReceiverRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget-object v1, p0, Lcom/android/server/am/ReceiverRecord$AppNotResponding;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ReceiverRecord$AppNotResponding;->mAnnotation:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    .line 156
    return-void
.end method
