.class Lcom/oneplus/gallery2/PhotoEditorFragment$1;
.super Ljava/lang/Object;
.source "PhotoEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/PhotoEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/PhotoEditorFragment;)V
    .locals 6

    .prologue
    .line 155
    iput-object p1, p0, Lcom/oneplus/gallery2/PhotoEditorFragment$1;->this$0:Lcom/oneplus/gallery2/PhotoEditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_ONE_FINGER_SCROLL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 157
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_MULTIPLE_FINGERS_SCALE:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 158
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_MULTIPLE_FINGERS_SCROLL:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 159
    sget-object v0, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v1, Lcom/oneplus/gallery2/PhotoEditorFragment;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    int-to-long v1, v1

    sget-object v3, Lcom/oneplus/widget/ScaleImageView;->FLAGS_GROUP:Lcom/oneplus/base/BitFlagsGroup;

    sget v4, Lcom/oneplus/widget/ScaleImageView;->FLAG_GESTURE_DOUBLE_TAP_SCALE:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/base/BitFlagsGroup;->createRelation(JLcom/oneplus/base/BitFlagsGroup;J)V

    .line 160
    return-void
.end method
