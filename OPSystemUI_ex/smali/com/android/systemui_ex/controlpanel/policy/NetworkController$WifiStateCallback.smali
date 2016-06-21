.class public interface abstract Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WifiStateCallback"
.end annotation


# virtual methods
.method public abstract onAirplaneModeChanged(Z)V
.end method

.method public abstract onWifiAvailable(Z)V
.end method

.method public abstract onWifiStateChanged(ZLjava/lang/String;)V
.end method
