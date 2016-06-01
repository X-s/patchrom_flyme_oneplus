.class public abstract Lorg/jsoup/select/Evaluator$IndexEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jsoup/select/Evaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IndexEvaluator"
.end annotation


# instance fields
.field index:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    .line 364
    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    .line 365
    iput p1, p0, Lorg/jsoup/select/Evaluator$IndexEvaluator;->index:I

    .line 366
    return-void
.end method
