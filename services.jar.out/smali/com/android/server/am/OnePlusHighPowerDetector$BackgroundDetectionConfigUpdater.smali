.class Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackgroundDetectionConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .prologue
    .line 1929
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .prologue
    .line 1932
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->-wrap2(Lcom/android/server/am/OnePlusHighPowerDetector;Lorg/json/JSONArray;)V

    .line 1931
    return-void
.end method
