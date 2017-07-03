.class Lcom/oneplus/gallery/PhotoEditorFragment$1;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/PhotoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/PhotoEditorFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/PhotoEditorFragment;)V
    .locals 6

    .prologue
    .line 145
    iput-object p1, p0, Lcom/oneplus/gallery/PhotoEditorFragment$1;->this$0:Lcom/oneplus/gallery/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 147
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 148
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 149
    sget-object v0, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery/PhotoEditorFragment;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 150
    return-void
.end method
