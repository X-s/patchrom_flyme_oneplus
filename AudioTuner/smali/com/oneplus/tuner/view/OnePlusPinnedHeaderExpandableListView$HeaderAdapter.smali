.class public interface abstract Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView$HeaderAdapter;
.super Ljava/lang/Object;
.source "OnePlusPinnedHeaderExpandableListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/tuner/view/OnePlusPinnedHeaderExpandableListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HeaderAdapter"
.end annotation


# static fields
.field public static final PINNED_HEADER_GONE:I = 0x0

.field public static final PINNED_HEADER_PUSHED_UP:I = 0x2

.field public static final PINNED_HEADER_VISIBLE:I = 0x1


# virtual methods
.method public abstract configureHeader(Landroid/view/View;III)V
.end method

.method public abstract getGroupClickStatus(I)I
.end method

.method public abstract getHeaderState(II)I
.end method

.method public abstract setGroupClickStatus(II)V
.end method
