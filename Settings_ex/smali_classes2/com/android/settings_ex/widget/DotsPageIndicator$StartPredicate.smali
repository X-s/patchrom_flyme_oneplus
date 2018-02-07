.class public abstract Lcom/android/settings_ex/widget/DotsPageIndicator$StartPredicate;
.super Ljava/lang/Object;
.source "DotsPageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/widget/DotsPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StartPredicate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

.field protected thresholdValue:F


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/widget/DotsPageIndicator;F)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings_ex/widget/DotsPageIndicator;
    .param p2, "thresholdValue"    # F

    .prologue
    .line 884
    iput-object p1, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$StartPredicate;->this$0:Lcom/android/settings_ex/widget/DotsPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 885
    iput p2, p0, Lcom/android/settings_ex/widget/DotsPageIndicator$StartPredicate;->thresholdValue:F

    .line 884
    return-void
.end method


# virtual methods
.method abstract shouldStart(F)Z
.end method
