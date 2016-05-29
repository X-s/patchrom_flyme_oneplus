.class public interface abstract Lcom/android/settings_ex/deviceinfo/StorageMeasurement$DataInitReceiver;
.super Ljava/lang/Object;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataInitReceiver"
.end annotation


# virtual methods
.method public abstract onDataInitFinish(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/deviceinfo/StorageMeasurement$FileInfo;",
            ">;)V"
        }
    .end annotation
.end method
