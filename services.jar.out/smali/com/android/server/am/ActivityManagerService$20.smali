.class Lcom/android/server/am/ActivityManagerService$20;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$aboveSystem:Z

.field final synthetic val$activity:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$annotation:Ljava/lang/String;

.field final synthetic val$parent:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$proc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "val$activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "val$parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "val$aboveSystem"    # Z
    .param p6, "val$annotation"    # Ljava/lang/String;

    .prologue
    .line 13826
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$20;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$proc:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$activity:Lcom/android/server/am/ActivityRecord;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$20;->val$parent:Lcom/android/server/am/ActivityRecord;

    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerService$20;->val$aboveSystem:Z

    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$20;->val$annotation:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 13835
    new-instance v0, Lcom/android/server/am/ActivityManagerService$20$1;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$20;->val$proc:Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$20;->val$activity:Lcom/android/server/am/ActivityRecord;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$20;->val$parent:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, p0, Lcom/android/server/am/ActivityManagerService$20;->val$aboveSystem:Z

    iget-object v6, p0, Lcom/android/server/am/ActivityManagerService$20;->val$annotation:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService$20$1;-><init>(Lcom/android/server/am/ActivityManagerService$20;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$20$1;->start()V

    .line 13828
    return-void
.end method
