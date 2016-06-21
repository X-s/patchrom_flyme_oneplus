.class public Lcom/android/systemui_ex/statusbar/policy/Clock;
.super Landroid/widget/TextView;
.source "Clock.java"

# interfaces
.implements Lcom/android/systemui_ex/DemoMode;
.implements Lcom/android/systemui_ex/statusbar/StatusbarColorObserver;


# static fields
.field private static final mDarkColor:I

.field private static final mWhiteColor:I


# instance fields
.field private final mAmPmStyle:I

.field private mAttached:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mClockFormat:Ljava/text/SimpleDateFormat;

.field private mClockFormatString:Ljava/lang/String;

.field private mDemoMode:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 269
    const-string v0, "#B3000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mDarkColor:I

    .line 270
    const-string v0, "#CCFFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mWhiteColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui_ex/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui_ex/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    new-instance v1, Lcom/android/systemui_ex/statusbar/policy/Clock$1;

    invoke-direct {v1, p0}, Lcom/android/systemui_ex/statusbar/policy/Clock$1;-><init>(Lcom/android/systemui_ex/statusbar/policy/Clock;)V

    iput-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Lcom/android/systemui_ex/R$styleable;->Clock:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 85
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAmPmStyle:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 90
    invoke-static {}, Lcom/android/systemui_ex/statusbar/StatusbarIconUtil;->isUsingDarkIcon()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/policy/Clock;->onStatusbarColorChange(Z)V

    .line 92
    return-void

    .line 87
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/systemui_ex/statusbar/policy/Clock;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/Clock;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui_ex/statusbar/policy/Clock;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/Clock;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui_ex/statusbar/policy/Clock;)Ljava/text/SimpleDateFormat;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/Clock;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui_ex/statusbar/policy/Clock;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/Clock;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui_ex/statusbar/policy/Clock;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/Clock;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui_ex/statusbar/policy/Clock;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui_ex/statusbar/policy/Clock;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    return-object p1
.end method

.method private final getSmallTime()Ljava/lang/CharSequence;
    .locals 22

    .prologue
    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 160
    .local v7, "context":Landroid/content/Context;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v20

    move/from16 v0, v20

    invoke-static {v7, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v12

    .line 161
    .local v12, "is24":Z
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v8

    .line 163
    .local v8, "d":Llibcore/icu/LocaleData;
    const v2, 0xef00

    .line 164
    .local v2, "MAGIC1":C
    const v3, 0xef01

    .line 167
    .local v3, "MAGIC2":C
    if-eqz v12, :cond_2

    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat24:Ljava/lang/String;

    .line 168
    .local v9, "format":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 174
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 175
    const/4 v4, -0x1

    .line 176
    .local v4, "a":I
    const/16 v16, 0x0

    .line 177
    .local v16, "quoted":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    move/from16 v0, v20

    if-ge v11, v0, :cond_1

    .line 178
    invoke-virtual {v9, v11}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 180
    .local v6, "c":C
    const/16 v20, 0x27

    move/from16 v0, v20

    if-ne v6, v0, :cond_0

    .line 181
    if-nez v16, :cond_3

    const/16 v16, 0x1

    .line 183
    :cond_0
    :goto_2
    if-nez v16, :cond_4

    const/16 v20, 0x61

    move/from16 v0, v20

    if-ne v6, v0, :cond_4

    .line 184
    move v4, v11

    .line 189
    .end local v6    # "c":C
    :cond_1
    if-ltz v4, :cond_6

    .line 191
    move v5, v4

    .line 192
    .local v5, "b":I
    :goto_3
    if-lez v4, :cond_5

    add-int/lit8 v20, v4, -0x1

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/lang/String;->charAt(I)C

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 193
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 167
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v9    # "format":Ljava/lang/String;
    .end local v11    # "i":I
    .end local v16    # "quoted":Z
    :cond_2
    iget-object v9, v8, Llibcore/icu/LocaleData;->timeFormat12:Ljava/lang/String;

    goto :goto_0

    .line 181
    .restart local v4    # "a":I
    .restart local v6    # "c":C
    .restart local v9    # "format":Ljava/lang/String;
    .restart local v11    # "i":I
    .restart local v16    # "quoted":Z
    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    .line 177
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 195
    .end local v6    # "c":C
    .restart local v5    # "b":I
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v9, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef00

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "a"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const v21, 0xef01

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    add-int/lit8 v21, v5, 0x1

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 199
    .end local v4    # "a":I
    .end local v5    # "b":I
    .end local v11    # "i":I
    .end local v16    # "quoted":Z
    :cond_6
    new-instance v18, Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v18

    invoke-direct {v0, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v18, "sdf":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    .line 200
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormatString:Ljava/lang/String;

    .line 204
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 206
    .local v17, "result":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    if-eqz v20, :cond_c

    .line 207
    const v20, 0xef00

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    .line 208
    .local v14, "magic1":I
    const v20, 0xef01

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v15

    .line 209
    .local v15, "magic2":I
    if-ltz v14, :cond_c

    if-le v15, v14, :cond_c

    .line 210
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 211
    .local v10, "formatted":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_8

    .line 212
    add-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v14, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 240
    .end local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v14    # "magic1":I
    .end local v15    # "magic2":I
    :goto_5
    return-object v10

    .line 202
    .end local v17    # "result":Ljava/lang/String;
    .end local v18    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mClockFormat:Ljava/text/SimpleDateFormat;

    move-object/from16 v18, v0

    .restart local v18    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_4

    .line 214
    .restart local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .restart local v14    # "magic1":I
    .restart local v15    # "magic2":I
    .restart local v17    # "result":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 215
    new-instance v19, Landroid/text/style/RelativeSizeSpan;

    const v20, 0x3f333333    # 0.7f

    invoke-direct/range {v19 .. v20}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 216
    .local v19, "style":Landroid/text/style/CharacterStyle;
    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v14, v15, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 233
    .end local v19    # "style":Landroid/text/style/CharacterStyle;
    :cond_9
    :goto_6
    add-int/lit8 v20, v15, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v15, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 234
    add-int/lit8 v20, v14, 0x1

    move/from16 v0, v20

    invoke-virtual {v10, v14, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    goto :goto_5

    .line 218
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAmPmStyle:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 222
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .line 226
    .local v13, "language":Ljava/lang/String;
    :goto_7
    const-string v20, "zh"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 227
    new-instance v19, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v20, 0xb

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 228
    .restart local v19    # "style":Landroid/text/style/CharacterStyle;
    const/16 v20, 0x22

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v10, v0, v14, v15, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_6

    .line 224
    .end local v13    # "language":Ljava/lang/String;
    .end local v19    # "style":Landroid/text/style/CharacterStyle;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mLocale:Ljava/util/Locale;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    .restart local v13    # "language":Ljava/lang/String;
    goto :goto_7

    .end local v10    # "formatted":Landroid/text/SpannableStringBuilder;
    .end local v13    # "language":Ljava/lang/String;
    .end local v14    # "magic1":I
    .end local v15    # "magic2":I
    :cond_c
    move-object/from16 v10, v17

    .line 240
    goto/16 :goto_5
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 248
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mDemoMode:Z

    if-nez v4, :cond_1

    const-string v4, "enter"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mDemoMode:Z

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v4, :cond_2

    const-string v4, "exit"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    iput-boolean v6, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mDemoMode:Z

    .line 252
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->updateClock()V

    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v4, :cond_0

    const-string v4, "clock"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 254
    const-string v4, "millis"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 255
    .local v2, "millis":Ljava/lang/String;
    const-string v4, "hhmm"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "hhmm":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 257
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 264
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui_ex/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 258
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 259
    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 260
    .local v0, "hh":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 261
    .local v3, "mm":I
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xa

    invoke-virtual {v4, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 262
    iget-object v4, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v3}, Ljava/util/Calendar;->set(II)V

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAttached:Z

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAttached:Z

    .line 100
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 102
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.TIME_TICK"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 116
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->updateClock()V

    .line 120
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 125
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAttached:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mAttached:Z

    .line 129
    :cond_0
    return-void
.end method

.method public onStatusbarColorChange(Z)V
    .locals 1
    .param p1, "isUsingDarkColor"    # Z

    .prologue
    .line 273
    if-eqz p1, :cond_0

    .line 274
    sget v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mDarkColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->setTextColor(I)V

    .line 278
    :goto_0
    return-void

    .line 276
    :cond_0
    sget v0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mWhiteColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->setTextColor(I)V

    goto :goto_0
.end method

.method final updateClock()V
    .locals 4

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mDemoMode:Z

    if-eqz v0, :cond_0

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/policy/Clock;->mCalendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->getSmallTime()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui_ex/statusbar/policy/Clock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
