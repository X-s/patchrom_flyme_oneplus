.class Lcom/android/server/am/BroadcastQueue$BroadcastOptimizationConfigUpdater;
.super Ljava/lang/Object;
.source "BroadcastQueue.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BroadcastOptimizationConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method constructor <init>(Lcom/android/server/am/BroadcastQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BroadcastQueue;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastOptimizationConfigUpdater;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastOptimizationConfigUpdater;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-static {v0, p1}, Lcom/android/server/am/BroadcastQueue;->-wrap0(Lcom/android/server/am/BroadcastQueue;Lorg/json/JSONArray;)V

    .line 267
    return-void
.end method
