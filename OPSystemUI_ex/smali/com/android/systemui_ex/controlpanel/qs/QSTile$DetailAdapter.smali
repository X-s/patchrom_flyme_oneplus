.class public interface abstract Lcom/android/systemui_ex/controlpanel/qs/QSTile$DetailAdapter;
.super Ljava/lang/Object;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/controlpanel/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DetailAdapter"
.end annotation


# virtual methods
.method public abstract createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract getSettingsIntent()Landroid/content/Intent;
.end method

.method public abstract getTitle()I
.end method
