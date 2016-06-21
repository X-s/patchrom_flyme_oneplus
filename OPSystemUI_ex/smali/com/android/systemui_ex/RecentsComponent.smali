.class public interface abstract Lcom/android/systemui_ex/RecentsComponent;
.super Ljava/lang/Object;
.source "RecentsComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui_ex/RecentsComponent$Callbacks;
    }
.end annotation


# virtual methods
.method public abstract cancelPreloadingRecents()V
.end method

.method public abstract hideRecents(ZZ)V
.end method

.method public abstract preloadRecents()V
.end method

.method public abstract setCallback(Lcom/android/systemui_ex/RecentsComponent$Callbacks;)V
.end method

.method public abstract showNextAffiliatedTask()V
.end method

.method public abstract showPrevAffiliatedTask()V
.end method

.method public abstract showRecents(ZLandroid/view/View;)V
.end method

.method public abstract toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
.end method
