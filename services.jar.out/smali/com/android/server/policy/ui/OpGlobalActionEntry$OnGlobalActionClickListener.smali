.class public interface abstract Lcom/android/server/policy/ui/OpGlobalActionEntry$OnGlobalActionClickListener;
.super Ljava/lang/Object;
.source "OpGlobalActionEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ui/OpGlobalActionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnGlobalActionClickListener"
.end annotation


# virtual methods
.method public abstract onClicked(Lcom/android/server/policy/OpGlobalActions$Action;)V
.end method

.method public abstract onLongPressed(Lcom/android/server/policy/OpGlobalActions$Action;)Z
.end method

.method public abstract onMissClicked()V
.end method
