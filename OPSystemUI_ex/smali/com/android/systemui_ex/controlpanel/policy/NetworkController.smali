.class public interface abstract Lcom/android/systemui_ex/controlpanel/policy/NetworkController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;,
        Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;,
        Lcom/android/systemui_ex/controlpanel/policy/NetworkController$NetworkSignalChangedCallback;
    }
.end annotation


# virtual methods
.method public abstract addWifiStateCallback(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$WifiStateCallback;)V
.end method

.method public abstract getAccessPointController()Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;
.end method

.method public abstract getCurrentWifiState()Z
.end method

.method public abstract setWifiEnabled(Z)V
.end method
