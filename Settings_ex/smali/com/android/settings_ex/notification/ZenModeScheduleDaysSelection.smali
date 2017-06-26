.class public Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;
.super Landroid/widget/ScrollView;
.source "ZenModeScheduleDaysSelection.java"


# static fields
.field public static final DAYS:[I


# instance fields
.field private final mDayFormat:Ljava/text/SimpleDateFormat;

.field private final mDays:Landroid/util/SparseBooleanArray;

.field private final mLayout:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "days"    # [I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 51
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "EEEE"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    .line 47
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    .line 52
    new-instance v6, Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 55
    .local v3, "hPad":I
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v8, v3, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 56
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->addView(Landroid/view/View;)V

    .line 57
    if-eqz p2, :cond_0

    .line 58
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v6, p2

    if-ge v4, v6, :cond_0

    .line 59
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    aget v7, p2, v4

    invoke-virtual {v6, v7, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 58
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 62
    .end local v4    # "i":I
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 63
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 64
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 65
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    sget-object v6, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 66
    sget-object v6, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->DAYS:[I

    aget v2, v6, v4

    .line 67
    .local v2, "day":I
    const v6, 0x7f040160

    invoke-virtual {v5, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 69
    .local v1, "checkBox":Landroid/widget/CheckBox;
    const/4 v6, 0x7

    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 70
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDayFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 72
    new-instance v6, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection$1;-><init>(Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;I)V

    invoke-virtual {v1, v6}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 79
    iget-object v6, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 65
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 81
    .end local v1    # "checkBox":Landroid/widget/CheckBox;
    .end local v2    # "day":I
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->getDays()[I

    move-result-object v0

    return-object v0
.end method

.method private getDays()[I
    .locals 5

    .prologue
    .line 84
    new-instance v2, Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    invoke-direct {v2, v4}, Landroid/util/SparseBooleanArray;-><init>(I)V

    .line 85
    .local v2, "rt":Landroid/util/SparseBooleanArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 86
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 87
    .local v0, "day":I
    iget-object v4, p0, Lcom/android/settings_ex/notification/ZenModeScheduleDaysSelection;->mDays:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 85
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 88
    :cond_0
    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1

    .line 90
    .end local v0    # "day":I
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    new-array v3, v4, [I

    .line 91
    .local v3, "rta":[I
    const/4 v1, 0x0

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 92
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    aput v4, v3, v1

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    :cond_2
    invoke-static {v3}, Ljava/util/Arrays;->sort([I)V

    .line 95
    return-object v3
.end method


# virtual methods
.method protected onChanged([I)V
    .locals 0
    .param p1, "days"    # [I

    .prologue
    .line 100
    return-void
.end method
