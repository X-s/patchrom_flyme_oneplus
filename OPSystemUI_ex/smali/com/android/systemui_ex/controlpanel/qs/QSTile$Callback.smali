.class public interface abstract Lcom/android/systemui_ex/controlpanel/qs/QSTile$Callback;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onAnnouncementRequested(Ljava/lang/CharSequence;)V
.end method

.method public abstract onScanStateChanged(Z)V
.end method

.method public abstract onShowDetail(Z)V
.end method

.method public abstract onStateChanged(Lcom/android/systemui_ex/controlpanel/qs/QSTile$State;)V
.end method
