.class final Lcom/oppo/tribune/util/Cursors$1;
.super Ljava/lang/Object;
.source "Cursors.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/tribune/util/Cursors;->newCursorIterable(Landroid/database/Cursor;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oppo/tribune/util/Cursors$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Lcom/oppo/tribune/util/Cursors$CursorIterator;

    iget-object v1, p0, Lcom/oppo/tribune/util/Cursors$1;->val$cursor:Landroid/database/Cursor;

    invoke-direct {v0, v1}, Lcom/oppo/tribune/util/Cursors$CursorIterator;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method
