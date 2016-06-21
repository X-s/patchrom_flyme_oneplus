.class public interface abstract Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController;
.super Ljava/lang/Object;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AccessPointController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;,
        Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPointCallback;
    }
.end annotation


# virtual methods
.method public abstract addAccessPointCallback(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPointCallback;)V
.end method

.method public abstract canConfigWifi()Z
.end method

.method public abstract connect(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPoint;)Z
.end method

.method public abstract removeAccessPointCallback(Lcom/android/systemui_ex/controlpanel/policy/NetworkController$AccessPointController$AccessPointCallback;)V
.end method

.method public abstract scanForAccessPoints()V
.end method
